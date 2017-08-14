(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10011111 #b01100001000111010110000)))
;; x should be Float32(0xCFB08EB0 [Rational(-5924282368), -5924282368.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(-oo)

(declare-const z Float16)
(assert (= z (fp #b1 #b11111 #b0000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
