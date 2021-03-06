(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3D8D424F)))
;; x should be Float32(0x3D8D424F [Rational(9257551, 134217728), 0.068974])

(declare-const y Float32)
(assert (= y (fp #b1 #b11001101 #b01010001000010011010001)))
;; y should be Float32(0xE6A884D1 [Rational(-397903799688491991826432), -397903799688491991826432.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (= result (fp #b1 #b00101100 #b10101101001011011010010)))
(check-sat)
(exit)
