(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x802C728A)))
;; y should be Float32(0x802C728A [Rational(-1456453, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11010100011100110110100)))
;; z should be Float32(0x006A39B4 [Rational(1740397, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b0 #b00000000 #b11010100011100110110100))))
(check-sat)
(exit)
