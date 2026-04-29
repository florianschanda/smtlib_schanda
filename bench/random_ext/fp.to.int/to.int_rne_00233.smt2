(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A7AD552)))
;; x should be Float32(0x4A7AD552 [Rational(8219305, 2), 4109652.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 4109652

(declare-const z Int)
(assert (= z 4109652))
(assert (= y z))
