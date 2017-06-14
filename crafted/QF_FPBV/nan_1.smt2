(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

;; This tests the idea that NaN has multiple bitvector encodings

(declare-const x (_ BitVec 32))
(declare-const y (_ BitVec 32))

(define-const float_x Float32 ((_ to_fp 8 24) x))
(define-const float_y Float32 ((_ to_fp 8 24) y))

; if the two float obtained from x and y are = (not fp.eq!)
(assert (= float_x float_y))

; and one of them is NaN
(assert (fp.isNaN float_x))

; it should not follow that they come from the same bit-pattern
(assert (not (= x y)))
(check-sat)
(exit)
