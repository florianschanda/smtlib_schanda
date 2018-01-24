(set-info :smt-lib-version 2.5)
(set-logic QF_FP)
(set-info :source |Hand-translated fpcore.org benchmark|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float64)

(assert (fp.lt (_ +zero 11 53)
               x))
(assert (fp.lt x
               ((_ to_fp 11 53) RNE 10.0)))

(define-const res Float64
  (ite (fp.geq (fp.sub RNE
                       (fp.mul RNE x x)
                       x)
               (_ +zero 11 53))
       (fp.div RNE x ((_ to_fp 11 53) RNE 10.0))
       (fp.add RNE
               (fp.mul RNE x x) ((_ to_fp 11 53) RNE 2.0))))

(assert (not (and (fp.leq (_ +zero 11 53)
                          res)
                  (fp.leq res
                          ((_ to_fp 11 53) RNE 3.0)))))
(check-sat)
(exit)
