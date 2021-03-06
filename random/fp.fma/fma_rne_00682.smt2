(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AC58F67)))
;; x should be Float32(0x4AC58F67 [Rational(12947303, 2), 6473651.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xB2E9951D)))
;; y should be Float32(0xB2E9951D [Rational(-15308061, 562949953421312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8917CB3C)))
;; z should be Float32(0x8917CB3C [Rational(-2486991, 1361129467683753853853498429727072845824), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b1 #b01111100 #b01101000100001010011000))))
(check-sat)
(exit)
