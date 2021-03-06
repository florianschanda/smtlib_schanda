(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8039D8F4)))
;; x should be Float32(0x8039D8F4 [Rational(-947773, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10000111111111010101110)))
;; y should be Float32(0x8043FEAE [Rational(-2228055, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (_ +zero 8 24)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b0 #b00000000 #b00000000000000000000001)))
(check-sat)
(exit)
