(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

;; failed verification of axiom RNA_near_int (which has been removed
;; from SPARK).

(define-fun is_integral ((x Float32)) Bool (fp.eq x (fp.roundToIntegral RNE x)))

(declare-const x Float32)
(declare-const i Float32)
(define-const half Float32 ((_ to_fp 8 24) RNE 0.5))

(assert (is_integral i))
(assert (not (fp.isZero i)))  ;; to rule out boring case
(assert (fp.lt (fp.neg half) x))
(assert (fp.lt x half))

(assert (not (= (fp.roundToIntegral RNA (fp.add RNE i x))
                i)))
(check-sat)
(exit)
