(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00111011111001101100100)))
;; x should be Float32(0x801DF364 [Rational(-490713, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 8754611496295168959841480730992256043373270598427509.0 3182868713022634509794446388139653376642919365103025391618969452116220780880213603411558400.0)))))
;; w should be Float32(0x801DF364 [Rational(-490713, 178405961588244985132285746181186892047843328), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
