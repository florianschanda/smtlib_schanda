(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b11010010 #b11001011011011111010011)))
;; x should be Float32(0x6965B7D3 [Rational(17357006126319673674825728), 17357006126319673674825728.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 11412868990268358576762378.0)))
;; w should be Float32(0x69170C4E [Rational(11412869125352574404263936), 11412869125352574404263936.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
