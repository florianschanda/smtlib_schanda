(set-info :smt-lib-version 2.5)
(set-logic QF_FP)
(set-info :source |Hand-translated fpcore.org benchmark|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const u Float64)

(assert (and (fp.leq (_ +zero 11 53) u)
             (fp.leq u ((_ to_fp 11 53) RNE 1.0))))


(define-const res Float64
  (fp.div RNE
          (fp.neg (fp.mul RNE
                          (fp.mul RNE u u) u))
          ((_ to_fp 11 53) RNE 6.0)))

(assert (not (and (fp.leq ((_ to_fp 11 53) RNE (- 0.17))
                          res)
                  (fp.leq res
                          ((_ to_fp 11 53) RNE 0.05)))))
(check-sat)
(exit)
