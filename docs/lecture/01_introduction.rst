
Introduction & Basics
---------------------

This chapter includes the lecture materials. The structure is as follows:

1. ARMA
2. Forecasting

The main references are:

- :cite:`Hodrick1997`
- :cite:`Kilian2017`
- :cite:`Kirchgassner2012`


Wold Decomposition
^^^^^^^^^^^^^^^^^^

The Wold decomposition states that each covariance stationary, purely
non-deterministic stochastic process can be represented by a linear combination
of a series of uncorrelated random variables with zero mean and constant
variance when all additive components are subtracted in advance.

A series :math:`x_t` with deterministic :math:`\mu_t` can also be written as

.. math::

    x_t - \mu_t = \sum^\infty_{j=0} \psi_j u_{t-j}

where :math:`\psi_0 = 1` and :math:`\sum^\infty_{j=0} \psi^2_j < \infty`.
Furthermore, :math:`u_t` is a pure random process with

.. math::

    E[u_t] &= 0\\
    E[u_t u_s] &= \begin{cases}
                      \sigma^2 &\text{ if } &t=s\\
                      0 &\text{ else} &
                  \end{cases}

Here we are assuming that the error terms are uncorrelated, they do not need to
be independent.

The expectation for the mean is

.. math::

    E[x_t - \mu_t] &= E[\sum^\infty_{j=0} \psi_j u_{t-j}]\\
                   &= \sum^\infty_{j=0} \psi_j E[u_{t-j}]\\
                   &= 0\\
            E[x_t] &= \mu_t

For the variance, it holds that

.. math::

    V(x_t) &= E[(x_t - \mu_t)^2]\\
           &= E[(u_t + \psi_{t-1} u_{t-1} + \psi_{t-2} u_{t-2} + \dots)^2]\\
           &= E[u^2_t] + \psi_{t-1}^2 E[u^2_{t-1}] + \psi_{t-2}^2 E[u^2_{t-2}]
              + \dots\\
           &= \sigma^2 \sum^\infty_{j=0} \psi^2_j\\
           &= \gamma(0)

As we can see, the variance is finite and not time dependent. For :math:`\tau >
0`, we also get time independent covariances.

.. math::

    Cov(x_t, x_{t + \tau}) &= E[(x_t - \mu_t)(x_{t + \tau} - \mu_{t + \tau})]\\
                           &= E[(\sum^\infty_{j=0} \psi_j u_{t - j})
                                (\sum^\infty_{j=0} \psi_{j + \tau} u_{t - j
                                 + \tau})]\\
                           &= E[(u_t + \psi_1 u_{t-1} \dots + \psi_\tau
                                 u_{t - \tau} + \dots
                                )
                                (\psi_{t + \tau} u_{t + \tau} +
                                 \psi_{\tau + 1} u_{t + \tau - 1} + \dots
                                )
                               ]


