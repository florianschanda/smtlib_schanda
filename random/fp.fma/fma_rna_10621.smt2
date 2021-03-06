(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01110110101100101000111)))
;; x should be Float32(0xCABB5947 [Rational(-12278087, 2), -6139043.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x05CC0016)))
;; y should be Float32(0x05CC0016 [Rational(6684683, 348449143727040986586495598010130648530944), 0.000000])

(declare-const z Float32)
(assert (= z (_ NaN 8 24)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
