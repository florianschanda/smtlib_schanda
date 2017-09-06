(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10110100001101010101010)))
;; x should be Float32(0x4A5A1AAA [Rational(7146837, 2), 3573418.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 3573418

(declare-const z Int)
(assert (= z 3573418))
(assert (= y z))
