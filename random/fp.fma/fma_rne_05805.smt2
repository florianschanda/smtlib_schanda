(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF7E8DEDD)))
;; x should be Float32(0xF7E8DEDD [Rational(-9446352152625049477123434463887360), -9446352152625049477123434463887360.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A338736)))
;; y should be Float32(0x4A338736 [Rational(5882779, 2), 2941389.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00000000000000000000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
