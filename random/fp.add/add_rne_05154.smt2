(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111101 #b11000000111110000001101)))
;; x should be Float32(0xFEE07C0D [Rational(-149195589768802160814053037180943597568), -149195589768802160814053037180943597568.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x803B284C)))
;; y should be Float32(0x803B284C [Rational(-969235, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNE x y)))
(assert (not (= result ((_ to_fp 8 24) #xFEE07C0D))))
(check-sat)
(exit)
