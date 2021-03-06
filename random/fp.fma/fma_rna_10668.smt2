(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA999B93)))
;; x should be Float32(0xCA999B93 [Rational(-10066835, 2), -5033417.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA612AD6)))
;; y should be Float32(0xCA612AD6 [Rational(-7378283, 2), -3689141.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11001000001100101100000)))
;; z should be Float32(0x00641960 [Rational(205003, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b10101011 #b00001110001101101110000))))
(check-sat)
(exit)
