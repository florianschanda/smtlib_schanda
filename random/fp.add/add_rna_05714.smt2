(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0315DB7D)))
;; y should be Float32(0x0315DB7D [Rational(9821053, 22300745198530623141535718272648361505980416), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (fp #b0 #b00000110 #b00100011101101101111101))))
(check-sat)
(exit)
