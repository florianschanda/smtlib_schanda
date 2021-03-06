(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0020E557)))
;; y should be Float32(0x0020E557 [Rational(2155863, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010100 #b01000011110111100111110)))
;; z should be Float32(0x4A21EF3E [Rational(5306271, 2), 2653135.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
