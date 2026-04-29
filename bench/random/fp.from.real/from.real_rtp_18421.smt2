(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x001584A0)))
;; x should be Float32(0x001584A0 [Rational(44069, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 786216764802303088332012207190994136889748004204489.0 397858589127829313724305798517456672080364920637878173952371181514527597610026700426444800.0))))
;; w should be Float32(0x001584A0 [Rational(44069, 22300745198530623141535718272648361505980416), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
