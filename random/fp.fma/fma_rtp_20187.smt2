(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80388880)))
;; x should be Float32(0x80388880 [Rational(-28945, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8058CC12)))
;; y should be Float32(0x8058CC12 [Rational(-2909705, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x0007AEFC)))
;; z should be Float32(0x0007AEFC [Rational(125887, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x0007AEFD))))
(check-sat)
(exit)
