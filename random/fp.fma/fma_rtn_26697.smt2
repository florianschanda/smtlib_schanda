(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x926E00E6)))
;; x should be Float32(0x926E00E6 [Rational(-7798899, 10384593717069655257060992658440192), -0.000000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b01010100010101000010111)))
;; z should be Float32(0x4AAA2A17 [Rational(11151895, 2), 5575947.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
