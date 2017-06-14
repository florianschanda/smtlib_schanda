(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(declare-const state_1 Float32)
(declare-const x (_ BitVec 32))

(define-fun c () Float32 ((_ to_fp 8 24) RNE 10.0))

;; x < 1_000_000
(assert (bvult x (_ bv1000000 32)))

;; state = 0.0 or state in c .. float(x) * c
(assert (or (fp.isZero state_1)
            (and (fp.geq state_1 c)
                 (fp.leq state_1 (fp.mul RNE ((_ to_fp_unsigned 8 24) RNE x)
                                             c)))))

;; state = state + c
(define-fun state_2 () Float32
  (fp.add RNE state_1 c))

;; goal: state in c .. float(x+1) * c
(define-fun lim () Float32
  (fp.mul RNE ((_ to_fp_unsigned 8 24) RNE (bvadd x (_ bv1 32)))
              c))
(assert (not (and (fp.geq state_2 c)
                  (fp.leq state_2 lim))))
(check-sat)
(exit)
