(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unknown)

;;  verification of to_int_monotonic_int2

(define-fun is_finite ((x Float32)) Bool (or (fp.isZero x)
                                             (fp.isNormal x)
                                             (fp.isSubnormal x)))

(declare-const x Float32)
(declare-const bv_i (_ BitVec 129))
(define-const i Float32 ((_ to_fp 8 24) RNE bv_i))
(define-const to_int_x (_ BitVec 129) ((_ fp.to_sbv 129) RNA x))

(assert (is_finite x))
(assert (fp.leq i x))

(assert (not (bvsle bv_i to_int_x)))
(check-sat)
(exit)
