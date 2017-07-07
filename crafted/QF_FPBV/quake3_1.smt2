(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isZero f)
      (fp.isSubnormal f)))

;;  constants

(define-fun epsilon  () Float32 ((_ to_fp 8 24) RNE 0.005))
(define-fun bound_lo () Float32 ((_ to_fp 8 24) RNE 0.00001))

(define-fun f0_5 () Float32 ((_ to_fp 8 24) RNE 0.5))
(define-fun f1   () Float32 ((_ to_fp 8 24) RNE 1.0))
(define-fun f1_5 () Float32 ((_ to_fp 8 24) RNE 1.5))

(define-fun result_lo () Float32 (fp.sub RNE f1 epsilon))
(define-fun result_hi () Float32 (fp.add RNE f1 epsilon))

;;  parameters and preconditions

(declare-const input Float32)

;; isfinite(input) and input >= lo
(assert (isFinite input))
(assert (fp.geq input bound_lo))

;;  code

;; x2 = input * 0.5
(define-fun x2 () Float32 (fp.mul RNE input f0_5))

;;  i = unchecked_conversion_to_int(input)
;;
;;  no float to ieee binary interchange conversion, so we have to do it
;;  this way...
(declare-const i_1 (_ BitVec 32))
(assert (fp.eq ((_ to_fp 8 24) i_1) input))

;;  i = 16#5F3759DF# - (i / 2);
(define-fun i_2 () (_ BitVec 32)
  (bvsub #x5F3759DF
         (bvsdiv i_1 (_ bv2 32))))

;;  y = unchecked_conversion_to_float(i)
(define-fun y_1 () Float32 ((_ to_fp 8 24) i_2))

;; y = y * (1.5 - (x2 * (y * y)))
(define-fun y_2 () Float32
  (fp.mul RNE y_1
              (fp.sub RNE f1_5
                          (fp.mul RNE x2
                                      (fp.mul RNE y_1 y_1)))))

;; optional second iteration
;; (define-fun y_3 () Float32
;;   (fp.mul RNE y_2
;;               (fp.sub RNE f1_5
;;                           (fp.mul RNE x2
;;                                       (fp.mul RNE y_2 y_2)))))


;;  goals
;;  y * y * input in 1 - epsilon .. 1 + epsilon
(define-fun r () Float32
  (fp.mul RNE input (fp.mul RNE y_2 y_2)))
(assert (not (and (fp.geq r result_lo)
                  (fp.leq r result_hi))))
(check-sat)
(exit)
