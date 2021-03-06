(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b10101100001111000011000)))
;; x should be Float32(0x49561E18 [Rational(1754051, 2), 877025.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 57476748667.0 65536.0))))
;; w should be Float32(0x49561E19 [Rational(14032409, 16), 877025.562500])

(assert (not (distinct x w)))
(check-sat)
(exit)
