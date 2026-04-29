(set-info :smt-lib-version 2.5)
(set-logic QF_FP)
(set-info :source |Hand-translated fpcore.org benchmark|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float64)
(declare-const b Float64)
(declare-const c Float64)

(define-const f1_0 Float64 ((_ to_fp 11 53) RNE 1.0))
(define-const f9_0 Float64 ((_ to_fp 11 53) RNE 9.0))
(define-const f0_1 Float64 ((_ to_fp 11 53) RNE 0.1))

(assert (and (fp.leq f1_0 a) (fp.leq a f9_0)))
(assert (and (fp.leq f1_0 b) (fp.leq b f9_0)))
(assert (and (fp.leq f1_0 c) (fp.leq c f9_0)))
(assert (fp.gt (fp.add RNE a b) (fp.add RNE c f0_1)))
(assert (fp.gt (fp.add RNE a c) (fp.add RNE b f0_1)))
(assert (fp.gt (fp.add RNE b c) (fp.add RNE a f0_1)))

(define-const s Float64
  (fp.div RNE (fp.add RNE (fp.add RNE a b) c) ((_ to_fp 11 53) RNE 2.0)))

(define-const res Float64
  (fp.sqrt RNE
           (fp.mul RNE
                   (fp.mul RNE
                           (fp.mul RNE
                                   s
                                   (fp.sub RNE s a))
                           (fp.sub RNE s b))
                   (fp.sub RNE s c))))

(assert (not (and (fp.leq ((_ to_fp 11 53) RNE 0.29)
                          res)
                  (fp.leq res
                          ((_ to_fp 11 53) RNE 35.1)))))
(check-sat)
(exit)
