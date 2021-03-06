(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10110010100101111100001)))
;; x should be Float32(0x80594BE1 [Rational(-5852129, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA876705)))
;; y should be Float32(0xCA876705 [Rational(-8873733, 2), -4436866.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00000000000000000000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x0B3CEBCC))))
(check-sat)
(exit)
