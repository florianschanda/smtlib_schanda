(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805F638C)))
;; x should be Float32(0x805F638C [Rational(-1562851, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCAC52CEB)))
;; y should be Float32(0xCAC52CEB [Rational(-12922091, 2), -6461045.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00000000000000000000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b00010111 #b00100101111000010101111))))
(check-sat)
(exit)
