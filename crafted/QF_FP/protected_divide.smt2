(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

;; functions

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

;; constants

(define-fun float__last  () Float32 ((_ to_fp 8 24) #x7F7FFFFF))
(define-fun f0           () Float32 (_ +zero 8 24))
(define-fun f1           () Float32 ((_ to_fp 8 24) RNE 1.0))

;; inputs

(declare-const left  Float32)
(declare-const right Float32)

;; assumptions

; isfinite(left) and left >= 0
; isfinite(right) and right >= 0
(assert (isFinite left))
(assert (isFinite right))
(assert (fp.geq left f0))
(assert (fp.geq right f0))

;; vc

; (if    right >= 1              then left/right
;  elsif right = 0               then float'last
;  elsif right < left/float'last then float'last
;                                else left/right)
(define-fun result_1 () Float32 (fp.div RNE left right))

(define-fun result_2 () Float32
  (ite (fp.eq right f0)
       float__last
       (ite (fp.lt right (fp.div RNE left float__last))
            float__last
            result_1)))

(define-fun result_3 () Float32
  (ite (fp.lt right f1)
       result_2
       result_1))

;; goal: result is finite
(assert (not (isFinite result_3)))
(check-sat)
(exit)
