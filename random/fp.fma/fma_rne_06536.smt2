(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b00010011100111001111110)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A5EE5FE)))
;; y should be Float32(0x4A5EE5FE [Rational(7303935, 2), 3651967.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b10010010000010100110100)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b11111111 #b11111111111111111111111)))
(check-sat)
(exit)
