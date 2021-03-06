(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00101010 #b10110000000100100001111)))
;; x should be Float32(0x9558090F [Rational(-14158095, 324518553658426726783156020576256), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCADC0267)))
;; y should be Float32(0xCADC0267 [Rational(-14418535, 2), -7209267.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000000)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b01000001 #b01110011010100111001111))))
(check-sat)
(exit)
