(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun f10  () Float32 ((_ to_fp 8 24) RNE 10.0))
(define-fun f0_4 () Float32 ((_ to_fp 8 24) RNE 0.4))

(declare-fun result () Float32)

(assert (= result (fp.add RNE f10 f0_4)))
(assert (not (and (fp.geq result ((_ to_fp 8 24) RNE 10.39999))
                  (fp.leq result ((_ to_fp 8 24) RNE 10.40001)))))
(check-sat)
(exit)
