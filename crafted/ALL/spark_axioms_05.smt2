(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
;;(set-logic QF_FPBVNIA)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :category crafted)
;;(set-info :status )

(declare-const x Int)
(assert (>= x 340282346638528859811704183484516925440))

(define-const maxf Float32 ((_ to_fp 8 24) #x7F7FFFFF))

(define-const b1 (_ BitVec 256) ((_ int2bv 256) x))
(define-const f1 Float32 ((_ to_fp 8 24) RNE b1))

(define-const b2 (_ BitVec 256) ((_ int2bv 256) (+ x 1)))
(define-const f2 Float32 ((_ to_fp 8 24) RNE b2))

(assert (= f1 maxf))
;;(assert (= f2 (_ +oo 8 24)))

(check-sat)
(exit)
