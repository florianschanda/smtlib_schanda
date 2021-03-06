(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8014BC8C)))
;; x should be Float32(0x8014BC8C [Rational(-339747, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8014CE02)))
;; z should be Float32(0x8014CE02 [Rational(-681729, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b00000000 #b00101001100111000000010)))
(check-sat)
(exit)
