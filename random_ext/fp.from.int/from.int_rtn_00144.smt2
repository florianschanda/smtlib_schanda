(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RTN precise_int)
(declare-const x Int)
(assert (= x 7340897))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4AE006C2 [Rational(7340897), 7340897.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b11000000000011011000010)))
(assert (= y z))
