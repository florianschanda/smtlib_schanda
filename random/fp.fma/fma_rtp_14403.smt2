(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00001111111110000111011)))
;; x should be Float32(0x4A87FC3B [Rational(8911931, 2), 4455965.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x803AA44A)))
;; y should be Float32(0x803AA44A [Rational(-1921573, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000000)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x8AF93352))))
(check-sat)
(exit)
