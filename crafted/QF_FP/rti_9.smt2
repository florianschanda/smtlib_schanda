(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; verification of axiom RNA_near_int

(define-fun is_integral ((x Float32)) Bool (fp.eq x (fp.roundToIntegral RNE x)))

(declare-const x Float32)
(declare-const i Float32)
(define-const half Float32 ((_ to_fp 8 24) RNE 0.5))

(assert (is_integral i))
(assert (fp.lt (fp.neg half) x))
(assert (fp.lt x half))

(assert (not (= (fp.roundToIntegral RNA (fp.add RNE i x))
                i)))
(check-sat)
(get-value (x i))
(exit)
