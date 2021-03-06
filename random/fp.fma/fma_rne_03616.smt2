(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAEC3D7D)))
;; x should be Float32(0xCAEC3D7D [Rational(-15482237, 2), -7741118.500000])

(declare-const y Float32)
(assert (= y (_ +zero 8 24)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b0 #b00000001 #b00000000000000000000000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x00800000)))
(check-sat)
(exit)
