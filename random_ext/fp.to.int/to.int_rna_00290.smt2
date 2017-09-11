(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A08F0CE)))
;; x should be Float32(0x4A08F0CE [Rational(4487271, 2), 2243635.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 2243636

(declare-const z Int)
(assert (= z 2243636))
(assert (= y z))
