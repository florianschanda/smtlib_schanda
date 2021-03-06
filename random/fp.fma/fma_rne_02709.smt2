(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x232EC7F2)))
;; x should be Float32(0x232EC7F2 [Rational(5727225, 604462909807314587353088), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCAC2F4B5)))
;; z should be Float32(0xCAC2F4B5 [Rational(-12776629, 2), -6388314.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCAC2F4B5))))
(check-sat)
(exit)
