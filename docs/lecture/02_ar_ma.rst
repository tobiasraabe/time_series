Autoregressive and Moving Average Processes
-------------------------------------------

Moving Average Processes
^^^^^^^^^^^^^^^^^^^^^^^^

MA processes are characterized by a mean and lagged white noise. The first
order moving average process is

.. math::

    x_t &= \mu + u_t - \beta u_{t-1}\\
    x_t - \mu &= (1 - \beta L) U-z



Autoregressive Processes
^^^^^^^^^^^^^^^^^^^^^^^^

AR processes model the dependent variable with weighted lagged terms and white
noise. The first order autoregressive process looks like this

.. math::

    x_t = \delta + \alpha x_{t-1} + u_t

with :math:`u_t sim \mathcal{N}(0, \sigma^2)`.

The expression can be extended to infinite periods by recursively inserting
values for :math:`x_{t-1}, x_{t-2}, \dots`:

.. math::

    x_t = \alpha^{t - t_0} x_{t_0} + (1 + \alpha + \alpha^2 + \dots + \alpha^{t_0}) \delta + \sum^{t - t_0 - 1}_{j=0} \alpha^j u_{t-j}

If :math:`t_0 \to -\infty` and :math:`|\alpha| < 1`, the process can be modeled
as a constant plus additional white noise.

.. math::

    x_t = \underset{E(x_t)}{\frac{\delta}{1 - \alpha}} + \sum^\infty_{j=0} \alpha^j u_{t-j}

The equations can also be exressed with the lag operator

.. math::

    (1 - \alpha L) x_t &= \delta + u_t\\
    x_t &= \frac{\delta}{1 - \alpha L} + \frac{u_t}{1 - \alpha L}

where :math:`\frac{1}{1 - \alpha L}` can be expanded to geometric series

.. math::

    \frac{1}{1 - \alpha L} = 1 + \alpha L + \alpha^2 L^2 + \alpha^3 L^3 + \dots


Moments
^^^^^^^

Properties for :math:`|\alpha| < 1`:

.. math::

    \gamma(0) &= V(x_t)\\
              &= E[(x_t - E[x_t])^2]\\
              &= E[(\frac{\delta}{1 - \alpha L} + \frac{u_t}{1 - \alpha L} -
                 E[\frac{\delta}{1 - \alpha L} +
                 \frac{u_t}{1 - \alpha L}])^2]\\
              &= E[(\frac{\delta}{1 - \alpha L} + \frac{u_t}{1 - \alpha L} -
                 \frac{\delta}{1 - \alpha L} -
                 \frac{E[u_t]}{1 - \alpha L})^2]\\
              &= E[(\frac{u_t}{1 - \alpha L})^2]\\
              &= E[]


Link between stationarity and roots of the characteristic equation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

https://stats.stackexchange.com/questions/183931/link-between-stationarity-of-
ar2-and-stability-condition-of-corresponding-diff
