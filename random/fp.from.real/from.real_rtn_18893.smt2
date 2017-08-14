(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0010A98C)))
;; x should be Float32(0x0010A98C [Rational(272995, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 2435198679863229954088409550433688233064365006235921.0 1591434356511317254897223194069826688321459682551512695809484726058110390440106801705779200.0))))
;; w should be Float32(0x0010A98C [Rational(272995, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
