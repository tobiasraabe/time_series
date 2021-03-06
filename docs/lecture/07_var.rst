Vector Autoregressive (VAR) Model
---------------------------------

The construction of a VAR model starts with the time series vector with
:math:`K` observables:

.. math::

    y_t = [y_{1t}, y_{2t}, \dots, y_{Kt}]'

The DGP consists of a deterministic and stochastic part

.. math::

    y_t = \mu_t + x_t

with :math:`E[y_t] = \mu_t` as the expected values. :math:`\mu_t` can be a
constant, polynomial trend terms, seasonal dummies or more.

The stochastic term is a linear VAR process of order :math:`p`

.. math::

    x_t = A_1 x_{t-1} + A_2 x_{t-2} + \dots + A_p x_{t-p} + u_t

where :math:`u_t` is white noise with :math:`E[u_t] = 0`, :math:`E[u_t u_s] = 0
\forall s \neq t` and :math:`E[u_t u'_t] = \Sigma_u` such that :math:`u_t \sim
(0, \Sigma_u)`.

It is convenient to rewrite the former expression for the stochastic part as

.. math::

    A(L) x_t = u_t

with :math:`A(L) = I_k - A_1 L - A_2 L^2 - \dots A_p L^p`. Inserting this equation into the DGP equation yields:

.. math::

    A(L) y_t = A(L) \mu + u_t

If the deterministic term is just a constant, i.e. :math:`\mu_t = \mu_0`

.. math::

    y_t = \nu + A_1 y_{t-1} + \dots + A_p y_{t-p} + u_t

where :math:`\nu = A(L) \mu_0 = A(1) \mu_0 = (I_k - \sum^p_{j=1} A_j) \mu_0`.

The process is stable if all roots of the following polynomial are outside the
unit circle.

.. math::

    \det(A(z)) = \det(I_K - A_1 z - \dots - A_pz^p) \neq 0 \forall z \in
    \mathcal{C}, \mid z \mid \leq 1

This is true under common assumptions:

- costant mean
- white noise with time-invariant covariance matrix
- stationarity

A stable :math:`VAR(p)` process can be represented as a moving average by
successive substitution. Consider the example of the following :math:`VAR(1)`:

.. math::

    y_t    &= \nu + A_1 y_{t-1} + u_t\\
    y_t    &= \nu + A_1 (\nu + A_1 y_{t-2} + u_{t-1}) + u_t\\
    \vdots &= \vdots\\
    y_t    &= \sum^\infty_{i=0} A^i_1 \nu + \sum^\infty_{i=0} A^i_1 u_{t-i}\\
           &= (I_K - A_1)^{-1} \nu + \sum^\infty_{i = 0} A^i_1 u_{t-i}

If all eigenvalues of :math:`A_1` have modulus < 1, the sequence :math:`A^i_1,
i = 1, \dots` is absolutely summable and converges to :math:`(I_K - A_1) \nu`
for :math:`j\to\infty`.

We can also obtain the Wold representation of the process. Rewrite the model to

.. math::

    A(L) y_t = \nu + u_t

Then, let :math:`\phi(L) = \sum^\infty_{i=0} \phi_i L^i` such that :math:`\phi(L)A(L) = I_k`. Premultiplying yields

.. math::

    y_t &= \phi(L) \nu + \phi(L) u_t\\
        &= \underbrace{\sum^\infty_{i=0} \phi_i}_{=\mu} \nu
           + \sum^\infty_{i=0} \phi_i u_{t-i}

where :math:`\phi(L)` is often denoted as :math:`A(L)^{-1}`, meaning the
inverse of the expression. :math:`A(L)` is invertible if :math:`\mid A(z) \mid
\neq 0` for :math:`\mid z \mid \leq 1`, which is the stability condition. Each
element :math:`\phi_i` can be computed recursively with

.. math::

    \phi_0 &= I_K\\
    \phi_i &= \sum^i_{j=0} \phi_{i-j} A_j &\text{for } i = 1, 2, \dots.

where :math:`A_j = 0` for :math:`j > p`. For a stable process, :math:`\phi_i
\to 0` as :math:`i \to \infty`.

Moments
^^^^^^^

The distribution is solely determined by :math:`u_t`. The mean follows immediately from the Wold representation.

.. math::

    E[y_t] = \mu

The covariance is

.. math::

    \Gamma_y(h) &= Cov(y_t, y_{t-h})\\
                &= E[(y_t - \mu)(y_{t-h} - \mu})']\\
                &= \sum^\infty_{i=0} \phi_{h+i} \Sigma_u \phi'_i

Autocovariances
^^^^^^^^^^^^^^^

Suppose that :math:`y_t` is a stationary and stable :math:`VAR(1)` process with

.. math::

    y_t &= \nu + A_1 y_{t-1} + u_t\\
    y_t - \mu &= A_1 (y_{t-1} - \mu) + u_t

where :math:`E[u_t u_'t = \Sigma_u` and :math:`E[y_t] = \mu`. Postmultiply by
:math:`(y_{t-h} - \mu)'` and taking expectation yields

.. math::

    E[(y_t - \mu)(y_{t-h} - \mu)'] = A_1 E[(y_{t-1} - \mu)(y_{t-h} - \mu)'] + E[u_t (y_{t-h} - \mu)']

