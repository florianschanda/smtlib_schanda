(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801B5F08)))
;; x should be Float32(0x801B5F08 [Rational(-224225, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010011 #b10010011000010011000100)))
;; y should be Float32(0x49C984C4 [Rational(3301681, 2), 1650840.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCA4F841A)))
;; z should be Float32(0xCA4F841A [Rational(-6799885, 2), -3399942.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b10010100 #b10011111000010000011010))))
(check-sat)
(exit)
