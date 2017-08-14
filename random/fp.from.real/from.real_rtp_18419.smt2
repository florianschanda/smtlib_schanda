(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004B7CA0)))
;; x should be Float32(0x004B7CA0 [Rational(154597, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 3019481.0 435561429658801233233119497512663310663680000.0))))
;; w should be Float32(0x004B7CAE [Rational(2473559, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
