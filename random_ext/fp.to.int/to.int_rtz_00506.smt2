(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTZ -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9BF19F04)))
;; x should be Float32(0x9BF19F04 [Rational(-3958721, 9903520314283042199192993792), -0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
