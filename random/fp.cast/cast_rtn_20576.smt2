(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b11011011 #b01010010001001110111111)))
;; x should be Float32(0x6DA913BF [Rational(6540854777797277833880403968), 6540854777797277833880403968.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0x7BFF [Rational(65504), 65504.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x7BFF)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
