(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A53DC26)))
;; x should be Float32(0x4A53DC26 [Rational(6942227, 2), 3471113.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 3471114

(declare-const z Int)
(assert (= z 3471114))
(assert (= y z))
