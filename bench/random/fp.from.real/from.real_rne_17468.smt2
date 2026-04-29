(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x005719F2)))
;; x should be Float32(0x005719F2 [Rational(2854137, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 38170522349.0 7136238463529799405291429847247475681913733120000.0))))
;; w should be Float32(0x003A3E5C [Rational(954263, 178405961588244985132285746181186892047843328), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
