(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun f0_25 () Float32 ((_ to_fp 8 24) RNE 0.25))
(define-fun f1    () Float32 ((_ to_fp 8 24) RNE 1.0))

;; s_scale = 2.0 ** 0.8 (i.e. 3.27680E+03)
(define-fun s_max   () Float32 ((_ to_fp 8 24) RNE 10.0))
(define-fun s_msb   () Float32 ((_ to_fp 8 24) RNE 20.0))
(define-fun s_scale () Float32
  ((_ to_fp 8 24) #b01000101010011001100110011001101))

(declare-const x (_ BitVec 16))
(declare-const y Float32)

;; y in 0.25 .. 1.0
(assert (and (fp.geq y f0_25) (fp.leq y f1)))

;; res = (float)x / s_scale
(define-fun res_1 () Float32
  (fp.div RNE ((_ to_fp_unsigned 8 24) RNE ((_ zero_extend 16) x))
              s_scale))

;; if (res >= s_max) then res = res - s_msb
(define-fun res_2 () Float32
  (ite (fp.geq res_1 s_max)
       (fp.sub RNE res_1 s_msb)
       res_1))

;;  res = res / y
(define-fun res_3 () Float32
  (fp.div RNE res_2 y))

;; goal: isfinite(res_3)
(assert (not (isFinite res_3)))
(check-sat)
(exit)
