(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2A57D5A6)))
;; x should be Float32(0x2A57D5A6 [Rational(7072467, 36893488147419103232), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x9056FAA2)))
;; y should be Float32(0x9056FAA2 [Rational(-7044433, 166153499473114484112975882535043072), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
