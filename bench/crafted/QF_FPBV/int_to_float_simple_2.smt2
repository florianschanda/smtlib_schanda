(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun f0_9 () Float32 ((_ to_fp 8 24) RNE 0.9))

;; l = 7.3526e6
(define-fun l () Float32
  ((_ to_fp 8 24) #b01001010111000000110001000110000))

(declare-const x (_ BitVec 16))

;; x /= 0
(assert (not (= x (_ bv0 16))))

;; res = (float)x
(define-fun res_1 () Float32
  ((_ to_fp_unsigned 8 24) RNE ((_ zero_extend 16) x)))

;; res = l / res
(define-fun res_2 () Float32
  (fp.div RNE l res_1))

;; goal: isfinite(res_2)
(assert (not (isFinite res_2)))
(check-sat)
(exit)
