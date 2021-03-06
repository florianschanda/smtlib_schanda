(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x91BF523C)))
;; y should be Float32(0x91BF523C [Rational(-3134607, 10384593717069655257060992658440192), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10101111 #b10101100111010101100010)))
;; z should be Float32(0x57D67562 [Rational(471599287369728), 471599287369728.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b10101111 #b10101100111010101100010)))
(check-sat)
(exit)
