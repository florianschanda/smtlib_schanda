(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;;(set-info :status unsat)

;; verification of of_int_is_finite
(define-const maxfloat Float32 (fp #b0 #b11111110 #b11111111111111111111111))

(declare-const x (_ BitVec 256))
(assert (bvsle x ((_ fp.to_sbv 256) RNE maxfloat)))
(assert (bvsge x ((_ fp.to_sbv 256) RNE (fp.neg maxfloat))))

(define-const r Float32 ((_ to_fp 8 24) RNE x))
(assert (or (fp.isNaN r)
            (fp.isInfinite r)))

(check-sat)
(get-value (x))
(exit)
