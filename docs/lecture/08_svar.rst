Structural Vector Autoregressive (SVAR) Model
---------------------------------------------

A SVAR has the following form

.. math::

    B_0 y_t = B_1 y_{t-1} + \dots + B_p y_{t-p} + \omega_t

where :math:`\omega_t` has mean zero and is serially uncorrelated. :math:`B_0` governs the contemporaneous interactions between variables. Compactly written, we get

.. math::

    B(L) y_t = \omega_t

The variance-covariance matrix is normalized so that

.. math::

    E[\omega_t \omega'_t] = \Sigma_\omega = I_K.

Normally, we have

1. As many natural shocks as variables in the model
2. Structural shocks are by definition uncorrelated which means that
   :math:`\Sigma_\omega` is a diagonal matrix.
3. W.l.o.g. the varianced is normalized to unity

If we want to represent :math:`y_t` as a function of its lagged terms only, we
use the reduced form representation. For that, we premultiply with :math:`B^{-1}_0` which leads to

.. math::

    B_0 y_t &= B_1 y_{t-1} + \dots + B_p y_{t-p} + \omega_t\\
    B^{-1}_0 B_0 y_t &= B^{-1}_0 B_1 y_{t-1} + \dots + B^{-1}_0 B_p y_{t-p} +
    \omega_t\\
    y_t &= A_

