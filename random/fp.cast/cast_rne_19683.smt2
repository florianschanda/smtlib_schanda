(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01000111110100010110100)))
;; x should be Float32(0x49A3E8B4 [Rational(2685485, 2), 1342742.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x41347D1680000000 [Rational(2685485, 2), 1342742.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x41347D1680000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
