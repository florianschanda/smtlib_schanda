(set-info :smt-lib-version 2.5)
(set-logic QF_FP)
(set-info :source |Hand-translated fpcore.org benchmark|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float64)
(declare-const b Float64)
(declare-const c Float64)

(define-const f1_0  Float64 ((_ to_fp 11 53) RNE 1.0))
(define-const f9_0  Float64 ((_ to_fp 11 53) RNE 9.0))
(define-const f1e_6 Float64 ((_ to_fp 11 53) RNE 0.000001))

(assert (and (fp.leq f1_0 a) (fp.leq a f9_0)))
(assert (and (fp.leq f1_0 b) (fp.leq b f9_0)))
(assert (and (fp.leq f1_0 c) (fp.leq c f9_0)))
(assert (and (fp.gt (fp.add RNE a b) (fp.add RNE c f1e_6))))
(assert (and (fp.gt (fp.add RNE a c) (fp.add RNE b f1e_6))))
(assert (and (fp.gt (fp.add RNE b c) (fp.add RNE a f1e_6))))
(assert (and (fp.lt a c) (fp.lt b c)))

(define-const res Float64
  (ite (fp.lt a b)
       (fp.div RNE
               (fp.sqrt RNE
                        (fp.mul RNE
                                (fp.mul RNE
                                        (fp.mul RNE
                                                (fp.add RNE c
                                                        (fp.add RNE b a))
                                                (fp.sub RNE a
                                                        (fp.sub RNE c b)))
                                        (fp.add RNE
                                                a
                                                (fp.sub RNE c b)))
                                (fp.add RNE c (fp.sub RNE b a))))
               ((_ to_fp 11 53) RNE 4.0))
       (fp.div RNE
               (fp.sqrt RNE
                        (fp.mul RNE
                                (fp.mul RNE
                                        (fp.mul RNE
                                                (fp.add RNE
                                                        c
                                                        (fp.add RNE a b))
                                                (fp.sub RNE
                                                        b
                                                        (fp.sub RNE c a)))
                                        (fp.add RNE
                                                b
                                                (fp.sub RNE c a)))
                                (fp.add RNE c (fp.sub RNE a b))))
               ((_ to_fp 11 53) RNE 4.0))))

(assert (not (fp.geq res (_ +zero 11 53))))
(check-sat)
(exit)
