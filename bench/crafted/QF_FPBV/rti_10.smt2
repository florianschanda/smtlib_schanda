(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unknown)

;;  verification of to_int_monotonic_int1

(define-fun is_finite ((x Float32)) Bool (or (fp.isZero x)
                                             (fp.isNormal x)
                                             (fp.isSubnormal x)))

(declare-const x Float32)
(declare-const i_______ (_ BitVec 129))
(define-const i Float32 ((_ to_fp 8 24) RNE i_______))
(define-const to_int_x (_ BitVec 129) ((_ fp.to_sbv 129) RNA x))

(assert (is_finite x))
(assert (fp.leq x i))

(assert (not (bvsle to_int_x i_______)))
(check-sat)
(exit)
