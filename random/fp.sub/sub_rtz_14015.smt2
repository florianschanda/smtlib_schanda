(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC99A7DAC)))
;; x should be Float32(0xC99A7DAC [Rational(-2531179, 2), -1265589.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80126342)))
;; y should be Float32(0x80126342 [Rational(-602529, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (= result ((_ to_fp 8 24) #xC99A7DAB)))
(check-sat)
(exit)
