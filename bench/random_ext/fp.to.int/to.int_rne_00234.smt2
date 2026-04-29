(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10000100111100110101110)))
;; x should be Float32(0x4A4279AE [Rational(6372567, 2), 3186283.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 3186284

(declare-const z Int)
(assert (= z 3186284))
(assert (= y z))
